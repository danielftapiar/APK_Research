.class final Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow$1;
.super Ljava/lang/Object;
.source "DefaultInfoWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;


# direct methods
.method constructor <init>(Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow$1;->this$0:Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow$1;->this$0:Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->close()V

    .line 47
    :cond_0
    return v1
.end method
