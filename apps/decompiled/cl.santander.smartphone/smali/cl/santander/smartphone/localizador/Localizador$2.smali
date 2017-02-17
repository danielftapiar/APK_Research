.class Lcl/santander/smartphone/localizador/Localizador$2;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$2;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$2;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->loadCategories()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$3(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$2;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->userWantsAutomaticLocation()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$4(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 172
    return-void
.end method
