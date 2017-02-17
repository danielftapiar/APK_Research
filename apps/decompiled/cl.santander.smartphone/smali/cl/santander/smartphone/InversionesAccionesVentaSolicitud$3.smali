.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->comprobarDatos()Z
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$0(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 224
    .local v10, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v11, 0x7f060062

    new-instance v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->datos_venta_solicitud:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$1(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$2(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Lcl/santander/santanderCL/data/response/ItemCartera;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v3, v3, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D
    invoke-static {v4}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$3(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v4

    iget-object v6, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioFinal:D
    invoke-static {v6}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$4(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v6

    iget-object v8, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->numero_dias:I
    invoke-static {v8}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$5(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)I

    move-result v8

    iget-object v9, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v9, v9, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;-><init>(Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;Lcl/santander/santanderCL/data/response/ItemCartera;Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;DDILjava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 225
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 226
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 228
    .end local v10    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
