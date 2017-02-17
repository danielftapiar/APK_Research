.class public final Lde/viktorreiser/toolbox/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MultiSelectListPreference:[I

.field public static final MultiSelectListPreference_valueSeparator:I = 0x0

.field public static final PathAutoComplete:[I

.field public static final PathAutoComplete_rootDir:I = 0x1

.field public static final PathAutoComplete_showFiles:I = 0x0

.field public static final SambaAutoComplete:[I

.field public static final SambaAutoComplete_deniedAccessImage:I = 0x4

.field public static final SambaAutoComplete_deniedAccessText:I = 0x3

.field public static final SambaAutoComplete_sambaPassword:I = 0x2

.field public static final SambaAutoComplete_sambaUser:I = 0x1

.field public static final SambaAutoComplete_showFiles:I = 0x0

.field public static final SwipeableListItem:[I

.field public static final SwipeableListItem_animationSpeed:I = 0x1

.field public static final SwipeableListItem_detatchFromList:I = 0x0

.field public static final SwipeableListItem_hideListSelector:I = 0x7

.field public static final SwipeableListItem_startOffset:I = 0x2

.field public static final SwipeableListItem_stickyStart:I = 0x4

.field public static final SwipeableListItem_stopOffset:I = 0x3

.field public static final SwipeableListItem_swipeOnClick:I = 0x5

.field public static final SwipeableListItem_swipeOnLongClick:I = 0x6

.field public static final TabManagerView:[I

.field public static final TabManagerView_tabContentseparator:I = 0x2

.field public static final TabManagerView_tabLayout:I = 0x0

.field public static final TabManagerView_tabMinimumWidth:I = 0x5

.field public static final TabManagerView_tabScrollEdgeColor:I = 0x3

.field public static final TabManagerView_tabScrollEdgeWidth:I = 0x4

.field public static final TabManagerView_tabSeparator:I = 0x1

.field public static final ValidatedDialogPreference:[I

.field public static final ValidatedDialogPreference_onValidate:I = 0x0

.field public static final ViewStateFlipper:[I

.field public static final ViewStateFlipper_animationIn:I = 0x0

.field public static final ViewStateFlipper_animationOut:I = 0x1

.field public static final ViewStateFlipper_animationReverseIn:I = 0x2

.field public static final ViewStateFlipper_animationReverseOut:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v3, [I

    const v1, 0x7f010020

    aput v1, v0, v2

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->MultiSelectListPreference:[I

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->PathAutoComplete:[I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->SambaAutoComplete:[I

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->SwipeableListItem:[I

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->TabManagerView:[I

    .line 105
    new-array v0, v3, [I

    const v1, 0x7f010019

    aput v1, v0, v2

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->ValidatedDialogPreference:[I

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lde/viktorreiser/toolbox/R$styleable;->ViewStateFlipper:[I

    .line 77
    return-void

    .line 80
    :array_0
    .array-data 4
        0x7f01001a
        0x7f01001f
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
    .end array-data

    .line 89
    :array_2
    .array-data 4
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
    .end array-data

    .line 98
    :array_3
    .array-data 4
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
    .end array-data

    .line 107
    :array_4
    .array-data 4
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
