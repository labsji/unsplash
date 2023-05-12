<div class="unsplash-random">
    [#assign photo = restfn.call('unsplashImage', "random")!'random']
    [#if (photo != 'random') && (photo.urls)?has_content && (photo.user)?has_content]
	    <img
	      src='${photo.urls.small!}'
	      class='img-responsive'
	      alt='${photo.photo_description!"unsplash image"}'>
		
            Photo: <a href='${photo.urls.small!}' > ${photo.urls.small!} Random Photo </a>
	    <br>
            <picture>
		<source srcset=${photo.links.html!"unsplash"} >
	        <img
	          src='${photo.urls.small!}'
	          class='img-responsive'
	          alt='${photo.photo_description!"unsplash image"}'>
	    </picture>
	    <br>
	    Credits: <a href='${photo.links.html!"unsplash"}' class='btn btn-link'> 
	    '${photo.user.first_name!"UnSplash"}' '${photo.user.last_name!"UnSplash"}' </a>
    [#else]
      $(photo}
    [/#if]
</div>
