using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Threading.Tasks;
using static FrotixTeste.Components.Pages.Vistoria;
using FrotixTeste.Models; // 🔹 Garante que o serviço reconheça Vistorias corretamente

public class VistoriaService
{
    private readonly string _connectionString = "Server=  172.28.2.214,1433;Database=VistoriaDB;User Id=teste;Password=Guigui789;TrustServerCertificate=True;Encrypt=False;";


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

    // 🔹 Obtém todas as vistorias do banco de dados
    public async Task<List<Vistorias>> ObterTodasVistoriasAsync()
    {
        var vistorias = new List<Vistorias>();

        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = @"SELECT Id, PlacaID, MotoristaID, DataHoraInicio, DataHoraFinal, KM, DanoAvaria, 
                                PontoID, PontoFinalID, NivelCombustivelInicial, NivelCombustivelFinal 
                         FROM Vistorias";  // Certifique-se de que PontoID e PontoFinalID estão incluídos!

            using (SqlCommand cmd = new SqlCommand(query, conn))
            using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
            {
                while (await reader.ReadAsync())
                {
                    vistorias.Add(new Vistorias
                    {
                        Id = reader["Id"].ToString()!,
                        PlacaID = reader["PlacaID"].ToString()!,
                        MotoristaID = reader["MotoristaID"].ToString()!,
                        DataHoraInicio = reader.GetDateTime(reader.GetOrdinal("DataHoraInicio")),
                        DataHoraFinal = reader.GetDateTime(reader.GetOrdinal("DataHoraFinal")),
                        KM = reader["KM"].ToString()!,
                        DanoAvaria = reader["DanoAvaria"].ToString()!,
                        PontoID = reader["PontoID"] != DBNull.Value ? reader["PontoID"].ToString()! : "",
                        PontoFinalID = reader["PontoFinalID"] != DBNull.Value ? reader["PontoFinalID"].ToString()! : "",
                        NivelCombustivelInicial = reader["NivelCombustivelInicial"].ToString()!,
                        NivelCombustivelFinal = reader["NivelCombustivelFinal"].ToString()!
                    });
                }
            }
        }

        return vistorias;
    }



    // 🔹 Atualiza uma vistoria existente
    public async Task<bool> AtualizarVistoriaAsync(Vistorias vistoria)
    {
        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = @"
            UPDATE Vistorias 
            SET PlacaID = @PlacaID, 
                MotoristaID = @MotoristaID,
                PontoID = @PontoID,  -- ✅ Garante que o PontoID seja atualizado
                PontoFinalID = @PontoFinalID, -- ✅ Garante que o PontoFinalID seja atualizado
                DataHoraInicio = @DataHoraInicio, 
                DataHoraFinal = @DataHoraFinal, 
                KM = @KM, 
                DanoAvaria = @DanoAvaria
            WHERE Id = @Id";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Id", vistoria.Id);
                cmd.Parameters.AddWithValue("@PlacaID", vistoria.PlacaID);
                cmd.Parameters.AddWithValue("@MotoristaID", vistoria.MotoristaID);
                cmd.Parameters.AddWithValue("@PontoID", vistoria.PontoID ?? (object)DBNull.Value);  // ✅ Corrige valores nulos
                cmd.Parameters.AddWithValue("@PontoFinalID", vistoria.PontoFinalID ?? (object)DBNull.Value); // ✅ Corrige valores nulos
                cmd.Parameters.AddWithValue("@DataHoraInicio", vistoria.DataHoraInicio);
                cmd.Parameters.AddWithValue("@DataHoraFinal", vistoria.DataHoraFinal);
                cmd.Parameters.AddWithValue("@KM", vistoria.KM);
                cmd.Parameters.AddWithValue("@DanoAvaria", vistoria.DanoAvaria);

                int rowsAffected = await cmd.ExecuteNonQueryAsync();
                return rowsAffected > 0;
            }
        }
    }


    // 🔹 Remove uma vistoria pelo ID
    public async Task<bool> ExcluirVistoriaAsync(string id)
    {
        using (SqlConnection conn = new SqlConnection(_connectionString))
        {
            await conn.OpenAsync();
            string query = "DELETE FROM Vistorias WHERE Id = @Id";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                int rowsAffected = await cmd.ExecuteNonQueryAsync();
                return rowsAffected > 0;
            }
        }
    }




}
