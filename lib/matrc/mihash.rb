class MiHash 

		attr_accessor :r, :c
		
		def initialize(r,c)
		  @r, @c = r, c
		end
		
		def eql?(other)
		  (@r == other.r) && (@c == other.c)
		end
		
		def hash 
		  @r.hash ^ @c.hash
		end

		def ==(other)
		 self.class === other and
		   other.c == @c and
		   other.r == @r
		end
	end
