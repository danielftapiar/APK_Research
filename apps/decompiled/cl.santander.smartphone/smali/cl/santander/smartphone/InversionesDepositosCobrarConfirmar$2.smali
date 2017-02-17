.class Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$2;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrarConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->AceptarCobro_RecargaDesafio()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$2;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$2;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 242
    return-void
.end method
