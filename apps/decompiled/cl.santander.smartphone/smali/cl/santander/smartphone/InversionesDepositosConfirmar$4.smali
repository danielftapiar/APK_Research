.class Lcl/santander/smartphone/InversionesDepositosConfirmar$4;
.super Ljava/lang/Object;
.source "InversionesDepositosConfirmar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosConfirmar;->Confirmar()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$4;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$4;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    # invokes: Lcl/santander/smartphone/InversionesDepositosConfirmar;->RecargaDesafioCoordenadas()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->access$1(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 345
    return-void
.end method
