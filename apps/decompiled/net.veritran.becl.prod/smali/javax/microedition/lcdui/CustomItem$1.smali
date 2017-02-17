.class Ljavax/microedition/lcdui/CustomItem$1;
.super Ljava/lang/Object;
.source "CustomItem.java"

# interfaces
.implements Lorg/microemu/CustomItemAccess;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/CustomItem;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/CustomItem;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ljavax/microedition/lcdui/CustomItem$1;->this$0:Ljavax/microedition/lcdui/CustomItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomItem()Ljavax/microedition/lcdui/CustomItem;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem$1;->this$0:Ljavax/microedition/lcdui/CustomItem;

    return-object v0
.end method

.method public getPrefContentHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 50
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem$1;->this$0:Ljavax/microedition/lcdui/CustomItem;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/CustomItem;->getPrefContentHeight(I)I

    move-result v0

    return v0
.end method

.method public getPrefContentWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 46
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem$1;->this$0:Ljavax/microedition/lcdui/CustomItem;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/CustomItem;->getPrefContentWidth(I)I

    move-result v0

    return v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 54
    iget-object v0, p0, Ljavax/microedition/lcdui/CustomItem$1;->this$0:Ljavax/microedition/lcdui/CustomItem;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/CustomItem;->paint(Ljavax/microedition/lcdui/Graphics;II)V

    .line 55
    return-void
.end method
