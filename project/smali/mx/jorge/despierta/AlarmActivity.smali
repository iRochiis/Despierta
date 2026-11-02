.class public Lmx/jorge/despierta/AlarmActivity;
.super Landroid/app/Activity;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmx/jorge/despierta/AlarmActivity$JumpingMiku;
    }
.end annotation


# instance fields
.field final check:Ljava/lang/Runnable;

.field detail:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

.field label:Landroid/widget/TextView;

.field miku:Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->handler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lmx/jorge/despierta/AlarmActivity$1;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/AlarmActivity$1;-><init>(Lmx/jorge/despierta/AlarmActivity;)V

    iput-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->check:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method dp(I)I
    .locals 1

    .line 7
    int-to-float p1, p1

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method synthetic lambda$onCreate$0$mx-jorge-despierta-AlarmActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v1

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method synthetic lambda$onCreate$1$mx-jorge-despierta-AlarmActivity(Landroid/view/View;)V
    .locals 1

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lmx/jorge/despierta/TripService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "DISMISS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/AlarmActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lmx/jorge/despierta/TripService;->ringing:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->finish()V

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/AlarmActivity;->setShowWhenLocked(Z)V

    invoke-virtual {p0, v1}, Lmx/jorge/despierta/AlarmActivity;->setTurnScreenOn(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x280000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 10
    new-instance p1, Lmx/jorge/despierta/Palette;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v4, p1, Lmx/jorge/despierta/Palette;->bg:I

    iget v5, p1, Lmx/jorge/despierta/Palette;->surface:I

    iget v6, p1, Lmx/jorge/despierta/Palette;->bg:I

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lmx/jorge/despierta/AlarmActivity;->setContentView(Landroid/view/View;)V

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    new-instance v2, Lmx/jorge/despierta/AlarmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lmx/jorge/despierta/AlarmActivity$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/AlarmActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestApplyInsets()V

    .line 12
    const/16 v2, 0xd

    iget v3, p1, Lmx/jorge/despierta/Palette;->accent:I

    const-string v4, "DESPIERTA"

    invoke-virtual {p0, v4, v2, v3}, Lmx/jorge/despierta/AlarmActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lmx/jorge/despierta/AlarmActivity;->label:Landroid/widget/TextView;

    iget-object v2, p0, Lmx/jorge/despierta/AlarmActivity;->label:Landroid/widget/TextView;

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object v2, p0, Lmx/jorge/despierta/AlarmActivity;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x24

    iget v3, p1, Lmx/jorge/despierta/Palette;->fg:I

    const-string v4, "\u00a1Ya casi llegas!"

    invoke-virtual {p0, v4, v2, v3}, Lmx/jorge/despierta/AlarmActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lmx/jorge/despierta/AlarmActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lmx/jorge/despierta/AlarmActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "Tu parada est\u00e1 cerca"

    iget v3, p1, Lmx/jorge/despierta/Palette;->muted:I

    invoke-virtual {p0, v2, v1, v3}, Lmx/jorge/despierta/AlarmActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->detail:Landroid/widget/TextView;

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->detail:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->detail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->enabled(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->miku:Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->miku:Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " brincando para despertarte"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmx/jorge/despierta/AlarmActivity$JumpingMiku;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->miku:Lmx/jorge/despierta/AlarmActivity$JumpingMiku;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_1
    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->enabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmx/jorge/despierta/PetLibrary;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " te est\u00e1 despertando"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "Es hora de despertar"

    :goto_2
    const/16 v2, 0xf

    iget v5, p1, Lmx/jorge/despierta/Palette;->muted:I

    invoke-virtual {p0, v1, v2, v5}, Lmx/jorge/despierta/AlarmActivity;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    const-string v2, "Ya despert\u00e9"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget v2, p1, Lmx/jorge/despierta/Palette;->onAccent:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget p1, p1, Lmx/jorge/despierta/Palette;->accent:I

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const v4, 0x337ac984

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p1, v4, v2, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lmx/jorge/despierta/AlarmActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmx/jorge/despierta/AlarmActivity$$ExternalSyntheticLambda1;-><init>(Lmx/jorge/despierta/AlarmActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->renderMessage()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/AlarmActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmx/jorge/despierta/AlarmActivity;->renderMessage()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 16
    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 16
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmx/jorge/despierta/AlarmActivity;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method renderMessage()V
    .locals 2

    .line 15
    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->label:Landroid/widget/TextView;

    sget-boolean v1, Lmx/jorge/despierta/TripService;->alarmIsTest:Z

    if-eqz v1, :cond_0

    const-string v1, "PRUEBA DE ALARMA"

    goto :goto_0

    :cond_0
    const-string v1, "DESPIERTA"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->title:Landroid/widget/TextView;

    sget-boolean v1, Lmx/jorge/despierta/TripService;->alarmIsWarning:Z

    if-eqz v1, :cond_1

    const-string v1, "Revisa tu viaje"

    goto :goto_1

    :cond_1
    sget-boolean v1, Lmx/jorge/despierta/TripService;->alarmIsTest:Z

    if-eqz v1, :cond_2

    const-string v1, "\u00a1Despierta!"

    goto :goto_1

    :cond_2
    const-string v1, "\u00a1Ya casi llegas!"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity;->detail:Landroid/widget/TextView;

    sget-boolean v1, Lmx/jorge/despierta/TripService;->alarmIsWarning:Z

    if-eqz v1, :cond_3

    sget-object v1, Lmx/jorge/despierta/TripService;->alarmMessage:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-boolean v1, Lmx/jorge/despierta/TripService;->alarmIsTest:Z

    if-eqz v1, :cond_4

    const-string v1, "As\u00ed se ver\u00e1 tu aviso de llegada"

    goto :goto_2

    :cond_4
    sget-object v1, Lmx/jorge/despierta/TripService;->alarmDestination:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method text(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 2

    .line 8
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result p2

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result p1

    invoke-virtual {p0, p3}, Lmx/jorge/despierta/AlarmActivity;->dp(I)I

    move-result p3

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p1, "sans-serif-medium"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method
