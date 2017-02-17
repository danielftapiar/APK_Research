.class Lcl/santander/smartphone/InversionesAccionesVentaValidar$8;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaValidar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaValidar;->Confirmar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$8;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$8;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaValidar;->RecargaDesafioCoordenadas()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->access$1(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 558
    return-void
.end method
