package cmd.service;

import java.util.Map;

public interface AdminService {
	
	public void insert_img(Map<String, Object> map);
	
	public void save_img_cg(Map<String, Object> map);
	
	public void delete_img_cg(Map<String, Object> map);
	
	public void save_img_construction(Map<String, Object> map);
	
	public void delete_img_construction(Map<String, Object> map);
	
	public void save_mp4_vr(Map<String, Object> map);
}


