.class Lcl/santander/smartphone/InversionesAccionesCompraValidar$6;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraValidar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraValidar;->Confirmar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$6;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$6;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    # invokes: Lcl/santander/smartphone/InversionesAccionesCompraValidar;->Validar_RecargaDesafio()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->access$1(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    .line 647
    return-void
.end method
