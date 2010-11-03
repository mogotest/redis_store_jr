class RedisStore
  class MarshalledClient < Redis
    def marshalled_set(key, val, options = nil)
      val = marshal_value(val, options)
      if expires_in = expires_in(options)
        setex(key, val, expires_in)
      else
        set(key, val)
      end
    end

    def marshalled_setnx(key, val, options = nil)
      val = marshal_value(val, options)
      if expires_in = expires_in(options)
        set(key, val)
        expire(key, expires_in)
      else
        setnx(key, val)
      end
    end

    def setnx_with_expire(key, value, ttl)
      multi do
        setnx(key, val)
        expire(key, expires_in)
      end
    end

    def marshalled_get(key, options = nil)
      result = get(key)
      result = Marshal.load result if unmarshal?(result, options)
      result
    end

    private

    def marshal_value(val, options)
      raw?(options) ? val : Marshal.dump(val)
    end

    def unmarshal?(result, options)
      result && result.size > 0 && !raw?(options)
    end

    def raw?(options)
      options && options[:raw]
    end

    def expires_in(options)
      if options
        options[:expire_after] || options[:expires_in]
      else
        nil
      end
    end
  end
end
