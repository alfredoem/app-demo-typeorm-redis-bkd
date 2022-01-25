// import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm'
//
// @Entity()
// export class Results {
//     @PrimaryGeneratedColumn()
//     id: number;
//
//     @Column()
//     name: string;
//
//     @Column()
//     lastName: string;
//
// }


import { Entity, PrimaryColumn, Column, PrimaryGeneratedColumn } from 'typeorm';

// @Entity({ name: 'Resultados_Cabecera' })
@Entity()
export class Results {

    @PrimaryGeneratedColumn()
    id: number;

    // @PrimaryColumn({ type: 'bigint' })
    // Orden: number;
    //
    // @PrimaryColumn({ type: 'varchar' })
    // CodigoExamen: string;

    @Column({ type: 'varchar' })
    DescripcionExamen: string;

    @Column({ type: 'varchar' })
    IdPeticionSistemaExterno: string;

    @Column({ type: 'varchar' })
    DNIPaciente: string;

    @Column({ type: 'varchar' })
    AmbitoOrigen: string;

    @Column({ type: 'varchar' })
    Sede: string;

    @Column({ type: 'varchar' })
    CodigoSede: string;

    @Column({ type: 'datetime' })
    FechaHoraTomaMuestra: Date;

    @Column({ type: 'datetime' })
    FechaHoraEnvioSistemaE: Date;

    @Column({ type: 'datetime' })
    FechaRegistroOrden: Date;

    @Column({ type: 'varchar' })
    SistemaExterno: string;

    @Column({ type: 'varchar' })
    Resultado: string;

    // @Column({ type: 'varchar' })
    // MedicoTratante: string;

    // @Column({ type: 'int' })
    // Confidencial: number;
}
