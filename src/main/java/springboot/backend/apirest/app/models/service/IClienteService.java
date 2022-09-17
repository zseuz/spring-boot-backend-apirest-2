package springboot.backend.apirest.app.models.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import springboot.backend.apirest.app.models.entity.Cliente;
import springboot.backend.apirest.app.models.entity.Region;

public interface IClienteService {
	
	public List<Cliente> findAll();

	public Page<Cliente> findAll(Pageable pageable);

	public Cliente findById(Long id);
	
	public Cliente save(Cliente cliente);
	
	public void delete(Long id);
	
	public List<Region> findAllRegiones();
}
