module CameraHelper
  def edit_camera_link(camera)
  link_to('Edit', edit_camera_path(camera))
end

def delete_camera_link(camera)
  link_to('Delete', camera, method: :delete, data: {confirm: 'Are you sure?'})
end
end
