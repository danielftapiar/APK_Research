.class Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;
.super Ljava/lang/Object;
.source "ChoiceGroup.java"

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/ChoiceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImplicitListener"
.end annotation


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/ChoiceGroup;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/ChoiceGroup;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 4
    .param p1, "c"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 812
    move-object v0, p2

    check-cast v0, Ljavax/microedition/lcdui/List;

    .line 813
    .local v0, "list":Ljavax/microedition/lcdui/List;
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/List;->getSelectedIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->setSelectedIndex(IZ)V

    .line 815
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v1

    iget-object v1, v1, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 816
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Form;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Form;->fireItemStateListener()V

    .line 817
    iget-object v1, p0, Ljavax/microedition/lcdui/ChoiceGroup$ImplicitListener;->this$0:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->repaint()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v1

    goto :goto_0
.end method
