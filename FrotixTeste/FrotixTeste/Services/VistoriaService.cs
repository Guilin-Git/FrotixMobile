using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Threading.Tasks;
using static FrotixTeste.Components.Pages.Vistoria;

public class VistoriaService
{
    private readonly string _connectionString = "Server=  172.20.10.2,1433;Database=VistoriaDB;User Id=teste;Password=Guigui789;TrustServerCertificate=True;Encrypt=False;";


    public async Task<List<PlacaFields>> ObterPlacasAsync()
    {
        var placas = new List<PlacaFields>();

        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = "SELECT ID, Placa FROM Veiculos"; // Ajuste se necessário

            using (SqlCommand cmd = new SqlCommand(query, conn))
            using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
            {
                while (await reader.ReadAsync())
                {
                    placas.Add(new PlacaFields
                    {
                        ID = reader["ID"].ToString()!,
                        Text = reader["Placa"].ToString()!
                    });
                }
            }
        }

        return placas;
    }

    public async Task<List<MotoristaFields>> ObterMotoristasAsync()
    {
        var motoristas = new List<MotoristaFields>();

        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = "SELECT ID, Nome FROM Motoristas"; // Ajuste se necessário

            using (SqlCommand cmd = new SqlCommand(query, conn))
            using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
            {
                while (await reader.ReadAsync())
                {
                    motoristas.Add(new MotoristaFields
                    {
                        ID = reader["ID"].ToString()!,
                        Text = reader["Nome"].ToString()!
                    });
                }
            }
        }

        return motoristas;
    }

    public async Task<List<PontoFields>> ObterPontosAsync()
    {
        var pontos = new List<PontoFields>();

        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = "SELECT ID, Nome FROM Pontos"; // Ajuste se necessário

            using (SqlCommand cmd = new SqlCommand(query, conn))
            using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
            {
                while (await reader.ReadAsync())
                {
                    pontos.Add(new PontoFields
                    {
                        ID = reader["ID"].ToString()!,
                        Text = reader["Nome"].ToString()!
                    });
                }
            }
        }

        return pontos;
    }
    public async Task<bool> SalvarVistoria(Vistorias vistoria)
    {
        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();

            string query = @"INSERT INTO Vistorias 
                        (Id, PlacaID, MotoristaID, PontoID, PontoFinalID, NumeroFicha, DataHoraInicio, 
                         CRLV, CartaoAbastecimento, NivelCombustivelInicial, SetorSolicitante, Nome, 
                         Ramal, KM, DanoAvaria, Rubrica, DataHoraFinal, NivelCombustivelFinal, Fotos, Videos) 
                         VALUES 
                        (@Id, @PlacaID, @MotoristaID, @PontoID, @PontoFinalID, @NumeroFicha, @DataHoraInicio, 
                         @CRLV, @CartaoAbastecimento, @NivelCombustivelInicial, @SetorSolicitante, @Nome, 
                         @Ramal, @KM, @DanoAvaria, @Rubrica, @DataHoraFinal, @NivelCombustivelFinal, @Fotos, @Videos)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Id", vistoria.Id);
                cmd.Parameters.AddWithValue("@PlacaID", vistoria.PlacaID);
                cmd.Parameters.AddWithValue("@MotoristaID", vistoria.MotoristaID);
                cmd.Parameters.AddWithValue("@PontoID", vistoria.PontoID);
                cmd.Parameters.AddWithValue("@PontoFinalID", vistoria.PontoFinalID);
                cmd.Parameters.AddWithValue("@NumeroFicha", vistoria.NumeroFicha ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@DataHoraInicio", vistoria.DataHoraInicio ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@CRLV", vistoria.CRLV);
                cmd.Parameters.AddWithValue("@CartaoAbastecimento", vistoria.CartaoAbastecimento);
                cmd.Parameters.AddWithValue("@NivelCombustivelInicial", vistoria.NivelCombustivelInicial ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@SetorSolicitante", vistoria.SetorSolicitante ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Nome", vistoria.Nome ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Ramal", vistoria.Ramal ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@KM", vistoria.KM ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@DanoAvaria", vistoria.DanoAvaria ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Rubrica", vistoria.Rubrica ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@DataHoraFinal", vistoria.DataHoraFinal ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@NivelCombustivelFinal", vistoria.NivelCombustivelFinal ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Fotos", string.Join(";", vistoria.Fotos) ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Videos", string.Join(";", vistoria.Videos) ?? (object)DBNull.Value);

                int rowsAffected = await cmd.ExecuteNonQueryAsync();
                return rowsAffected > 0;
            }
        }
    }


}
