.class Lcl/santander/smartphone/HomeLogin2$1;
.super Ljava/lang/Object;
.source "HomeLogin2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeLogin2;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeLogin2;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeLogin2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeLogin2$1;->this$0:Lcl/santander/smartphone/HomeLogin2;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcl/santander/smartphone/HomeLogin2$1;->this$0:Lcl/santander/smartphone/HomeLogin2;

    # invokes: Lcl/santander/smartphone/HomeLogin2;->tryToLogin()V
    invoke-static {v1}, Lcl/santander/smartphone/HomeLogin2;->access$0(Lcl/santander/smartphone/HomeLogin2;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
