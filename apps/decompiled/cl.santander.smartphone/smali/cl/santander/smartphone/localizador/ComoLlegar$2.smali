.class Lcl/santander/smartphone/localizador/ComoLlegar$2;
.super Ljava/lang/Object;
.source "ComoLlegar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/ComoLlegar;->cargaMapa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/ComoLlegar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$2;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$2;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->centraMapa()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$7(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    .line 232
    return-void
.end method
