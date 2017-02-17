.class public Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;
.super Landroid/preference/DialogPreference;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/Integer;

.field private f:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->setDialogLayoutResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->a:I

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->b:I

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->c:I

    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->a:I

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->getPersistedInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f0f00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_0
    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->f:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->persistInt(I)Z

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->a:I

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->getPersistedInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->persistInt(I)Z

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->a:I

    invoke-virtual {p0, v3}, Lcom/vrem/wifianalyzer/settings/ScanIntervalPreference;->getPersistedInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
