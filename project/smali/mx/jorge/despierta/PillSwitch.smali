.class final Lmx/jorge/despierta/PillSwitch;
.super Landroid/widget/CompoundButton;
.source "PillSwitch.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private brush:Landroid/graphics/Paint;

.field private position:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    .line 6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/PillSwitch;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/PillSwitch;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/PillSwitch;->setFocusable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lmx/jorge/despierta/PillSwitch;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method dp(I)I
    .locals 1

    .line 7
    int-to-float p1, p1

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 11
    const-string v0, "android.widget.Switch"

    return-object v0
.end method

.method synthetic lambda$setChecked$0$mx-jorge-despierta-PillSwitch(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lmx/jorge/despierta/PillSwitch;->position:F

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 10
    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->getWidth()I

    move-result v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->getHeight()I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v2, v3, v2

    new-instance v11, Lmx/jorge/despierta/Palette;

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v3}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v11, Lmx/jorge/despierta/Palette;->accent:I

    goto :goto_0

    :cond_0
    iget v5, v11, Lmx/jorge/despierta/Palette;->muted:I

    :goto_0
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    invoke-virtual {p0, v4}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v2, v1

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v8, v3

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v9, v3

    iget-object v10, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v5, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v11, Lmx/jorge/despierta/Palette;->onAccent:I

    goto :goto_1

    :cond_1
    iget v4, v11, Lmx/jorge/despierta/Palette;->fg:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p0, Lmx/jorge/despierta/PillSwitch;->position:F

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isChecked()Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p0, v7}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v5, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    iget v8, v11, Lmx/jorge/despierta/Palette;->accent:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v5, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v8}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {p0, v6}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    invoke-virtual {p0, v7}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    iget v4, v11, Lmx/jorge/despierta/Palette;->fg:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v6, v0, v4

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v7, v2, v3

    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v8, v0, v3

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v2, v0

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 8
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lmx/jorge/despierta/PillSwitch;->resolveSize(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/PillSwitch;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Lmx/jorge/despierta/PillSwitch;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmx/jorge/despierta/PillSwitch;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 9
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lmx/jorge/despierta/PillSwitch;->brush:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lmx/jorge/despierta/PillSwitch;->position:F

    return-void

    :cond_1
    iget-object v0, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput v1, p0, Lmx/jorge/despierta/PillSwitch;->position:F

    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->invalidate()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lmx/jorge/despierta/PillSwitch;->isChecked()Z

    move-result p1

    iget v0, p0, Lmx/jorge/despierta/PillSwitch;->position:F

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xaa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmx/jorge/despierta/PillSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/PillSwitch$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/PillSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lmx/jorge/despierta/PillSwitch;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
