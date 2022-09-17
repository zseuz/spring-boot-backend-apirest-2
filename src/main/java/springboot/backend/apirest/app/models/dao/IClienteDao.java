package springboot.backend.apirest.app.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import springboot.backend.apirest.app.models.entity.Cliente;
import springboot.backend.apirest.app.models.entity.Region;

public interface IClienteDao extends JpaRepository<Cliente, Long> {

	@Query("from Region ")
	public List<Region> findAllRegiones();
	
}
