.class Lcom/mwr/dz/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/MainActivity$2;->this$0:Lcom/mwr/dz/activities/MainActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity$2;->this$0:Lcom/mwr/dz/activities/MainActivity;

    # invokes: Lcom/mwr/dz/activities/MainActivity;->launchServerActivity()V
    invoke-static {v0}, Lcom/mwr/dz/activities/MainActivity;->access$3(Lcom/mwr/dz/activities/MainActivity;)V

    .line 69
    return-void
.end method
