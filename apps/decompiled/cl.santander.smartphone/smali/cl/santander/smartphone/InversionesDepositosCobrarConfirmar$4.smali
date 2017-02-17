.class Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$4;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrarConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->Confirmar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$4;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$4;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    # invokes: Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->AceptarCobro_RecargaDesafio()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->access$1(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 354
    return-void
.end method
