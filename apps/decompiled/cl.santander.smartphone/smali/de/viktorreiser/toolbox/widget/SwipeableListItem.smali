.class public interface abstract Lde/viktorreiser/toolbox/widget/SwipeableListItem;
.super Ljava/lang/Object;
.source "SwipeableListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;,
        Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;
    }
.end annotation


# virtual methods
.method public abstract onViewSwipe(Landroid/widget/ListView;Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;IILde/viktorreiser/toolbox/widget/SwipeableListItem;)Z
.end method

.method public abstract swipeDoesntHideListSelector()Z
.end method

.method public abstract swipeOnClick()Z
.end method

.method public abstract swipeOnLongClick()Z
.end method

.method public abstract swipeStateReset()V
.end method
