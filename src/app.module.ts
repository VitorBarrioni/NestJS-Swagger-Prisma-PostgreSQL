import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { CadastroModule } from './cadastro/cadastro.module';

@Module({
  imports: [ConfigModule.forRoot(), CadastroModule],
})
export class AppModule {}
