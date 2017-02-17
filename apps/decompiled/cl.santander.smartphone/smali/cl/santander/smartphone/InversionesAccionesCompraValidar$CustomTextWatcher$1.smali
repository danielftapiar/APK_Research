.class Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraValidar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;->access$0(Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cambiafoco()V

    .line 756
    return-void
.end method
