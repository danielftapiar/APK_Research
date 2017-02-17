.class Lnet/veritran/component/VTSelectorComponent$1;
.super Ljava/lang/Object;
.source "VTSelectorComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTSelectorComponent;->loadItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTSelectorComponent;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTSelectorComponent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTSelectorComponent;

    .prologue
    .line 320
    iput-object p1, p0, Lnet/veritran/component/VTSelectorComponent$1;->this$0:Lnet/veritran/component/VTSelectorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method
