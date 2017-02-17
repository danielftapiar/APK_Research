.class Lnet/veritran/component/VTMap$ProcessActionTask;
.super Landroid/os/AsyncTask;
.source "VTMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessActionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTMap;


# direct methods
.method private constructor <init>(Lnet/veritran/component/VTMap;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lnet/veritran/component/VTMap$ProcessActionTask;->this$0:Lnet/veritran/component/VTMap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/component/VTMap;Lnet/veritran/component/VTMap$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/component/VTMap;
    .param p2, "x1"    # Lnet/veritran/component/VTMap$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/veritran/component/VTMap$ProcessActionTask;-><init>(Lnet/veritran/component/VTMap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTMap$ProcessActionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 40
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 41
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    new-instance v2, Lnet/veritran/component/VTMap$ProcessActionTask$1;

    invoke-direct {v2, p0, v0}, Lnet/veritran/component/VTMap$ProcessActionTask$1;-><init>(Lnet/veritran/component/VTMap$ProcessActionTask;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    const/4 v1, 0x0

    return-object v1
.end method
