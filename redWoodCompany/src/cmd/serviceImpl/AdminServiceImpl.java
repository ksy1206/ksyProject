package cmd.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.AdminService;
import helper.dao.CommonDAO;




@Service("adminService")
public class AdminServiceImpl implements AdminService
{
	private final static Log logger = LogFactory.getLog(AdminServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public void insert_img(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.insert_img", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void save_img_cg(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.save_img_cg", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete_img_cg(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.delete_img_cg", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void save_img_construction(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.save_img_construction", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	@Override
	public void delete_img_construction(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.delete_img_construction", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void save_mp4_vr(Map<String, Object> map) {
		// TODO Auto-generated method stub
		try {
			this.commonDao.updateData("admin.save_mp4_vr", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Map<String, Object> select_imgName(Map<String, Object> map) {
		// TODO Auto-generated method stub
		Map<String, Object> portpolio = null;
		
		try {
			portpolio = (Map<String, Object>) this.commonDao.getReadData("admin.select_imgName", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return portpolio;
	}

	@Override
	public void delete_vrMp4(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		try {
			this.commonDao.deleteData("admin.delete_vrMp4", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Map<String, Object> select_vrMp4(Map<String, Object> map) {
		// TODO Auto-generated method stub
		Map<String, Object> vrMp4 = null;
		
		try {
			vrMp4 = (Map<String, Object>) this.commonDao.getReadData("admin.select_vrMp4", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vrMp4;
	}

}//end class

