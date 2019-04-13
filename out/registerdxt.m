function registerdxt
	formatStruct    = struct('ext',         {'dds'},...
						'isa',         @isdds,...
						'info',        @imddsinfo,...
						'read',        @readdds,...
						'write',       @writedds,...
						'alpha',       1,...
						'description', 'DirectDraw Surface');
					
	imformats('add', formatStruct);
					
	formatStruct    = struct('ext',         {'hdr'},...
						'isa',         @ishdr,...
						'info',        @imhdrinfo,...
						'read',        @readhdr,...
						'write',       @writehdr,...
						'alpha',       0,...
						'description', 'RGBE (Radiance HDR)');
					
	imformats('add', formatStruct);
					
	formatStruct    = struct('ext',         {'tga'},...
						'isa',         @istga,...
						'info',        @imtgainfo,...
						'read',        @readtga,...
						'write',       @writetga,...
						'alpha',       1,...
						'description', 'Truevision TGA (TARGA)');
					
	imformats('add', formatStruct);
					
end