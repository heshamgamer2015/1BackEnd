package TarefaCrud.demo.Entity;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter

public class Consulta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime data;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "paciente_id")
    private  Paciente paciente;


}
