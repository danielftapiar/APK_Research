.class public Lcl/santander/smartphone/DatosPersonalesUsuario;
.super Ljava/lang/Object;
.source "DatosPersonalesUsuario.java"


# instance fields
.field private m_escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

.field private m_iUserProfile:Lcl/santander/santanderCL/utils/Constant$PERFIL;

.field private nombre_usuario:Ljava/lang/String;

.field private pin_usuario:Ljava/lang/String;

.field private rut_usuario:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->nombre_usuario:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->rut_usuario:Ljava/lang/String;

    .line 18
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$PERFIL;->SIN_PERFIL:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    iput-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->m_iUserProfile:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rut"    # Ljava/lang/String;
    .param p2, "nombre"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->nombre_usuario:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->rut_usuario:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getEscalares()Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->m_escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    return-object v0
.end method

.method public getNombre_usuario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->nombre_usuario:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->m_iUserProfile:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    return-object v0
.end method

.method public getPin_usuario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->pin_usuario:Ljava/lang/String;

    return-object v0
.end method

.method public getRut_usuario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->rut_usuario:Ljava/lang/String;

    return-object v0
.end method

.method public setEscalares(Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;)V
    .locals 0
    .param p1, "escalares"    # Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    .prologue
    .line 38
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->m_escalares:Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    .line 39
    return-void
.end method

.method public setNombre_usuario(Ljava/lang/String;)V
    .locals 0
    .param p1, "nombre_usuario"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->nombre_usuario:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPerfil(Lcl/santander/santanderCL/utils/Constant$PERFIL;)V
    .locals 0
    .param p1, "_profile"    # Lcl/santander/santanderCL/utils/Constant$PERFIL;

    .prologue
    .line 46
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->m_iUserProfile:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    .line 47
    return-void
.end method

.method public setPin_usuario(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin_usuario"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->pin_usuario:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setRut_usuario(Ljava/lang/String;)V
    .locals 0
    .param p1, "rut_usuario"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcl/santander/smartphone/DatosPersonalesUsuario;->rut_usuario:Ljava/lang/String;

    .line 59
    return-void
.end method
