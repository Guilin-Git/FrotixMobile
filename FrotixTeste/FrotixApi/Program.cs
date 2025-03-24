using FrotixApi.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Configuração do CORS para permitir qualquer origem
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAllOrigins", builder =>
        builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
});

builder.Services.AddDbContext<FrotixDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Swagger
app.UseSwagger();
app.UseSwaggerUI();

// Habilita o CORS
app.UseCors("AllowAllOrigins");

// Remove o redirecionamento para HTTPS (não estamos usando HTTPS aqui)
//app.UseHttpRedirection(); // Remova essa linha

app.UseAuthorization();

app.MapControllers();

// A API agora escutará em todas as interfaces de rede na porta 5050 (sem HTTPS)
app.Run("http://0.0.0.0:5050");  // Aqui é onde a API escuta em todas as interfaces de rede
