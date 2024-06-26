import { ApiProperty } from '@nestjs/swagger';

export class UpdateClienteDto {
  @ApiProperty({ description: 'Nome do cliente' })
  nome: string;
}
