.class Lcl/santander/smartphone/InversionesDepositosConfirmar$2;
.super Ljava/lang/Object;
.source "InversionesDepositosConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosConfirmar;->RecargaDesafioCoordenadas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$2;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$2;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 254
    return-void
.end method
