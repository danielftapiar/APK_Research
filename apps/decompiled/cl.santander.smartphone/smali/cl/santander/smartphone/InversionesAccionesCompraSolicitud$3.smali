.class Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraSolicitud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->comprobarDatos()Z
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$0(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->TieneRiesgo()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$1(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 245
    :cond_0
    return-void
.end method
