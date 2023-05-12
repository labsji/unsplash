<div class="unsplash-photo">
  [#if content.unsplashPhoto?has_content]
    [#assign photo = cmsfn.contentById(content.unsplashPhoto, "unsplash")!]
    <img
      src='${photo.photo_image_url!}?w=350'
      class='img-responsive'
      alt='${photo.photo_description!"unsplash image"}'>
	
    <a href='${photo.photo_url!}' class='btn btn-link'> 
    Credits:${photo.photographer_first_name!photo.photographer_username!"UnSplash"} ${photo.photographer_last_name!"UnSplash"} </a>
    [#if content.title?has_content]
      <div class="unsplash-photo-title">${content.title!}</div>
    [/#if]

  [/#if]

</div>
