.class Lmx/jorge/despierta/UiSheet$Builder;
.super Ljava/lang/Object;
.source "UiSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/UiSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field cancel:Landroid/content/DialogInterface$OnCancelListener;

.field itemClick:Landroid/content/DialogInterface$OnClickListener;

.field items:[Ljava/lang/String;

.field message:Ljava/lang/String;

.field negative:Landroid/content/DialogInterface$OnClickListener;

.field negativeText:Ljava/lang/String;

.field positive:Landroid/content/DialogInterface$OnClickListener;

.field positiveText:Ljava/lang/String;

.field title:Ljava/lang/String;

.field validator:Ljava/util/function/BooleanSupplier;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->message:Ljava/lang/String;

    new-instance v0, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->validator:Ljava/util/function/BooleanSupplier;

    .line 12
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    new-instance v0, Lmx/jorge/despierta/Palette;

    invoke-direct {v0, p1}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p1, v0, Lmx/jorge/despierta/Palette;->fg:I

    sput p1, Lmx/jorge/despierta/UiSheet;->FG:I

    iget p1, v0, Lmx/jorge/despierta/Palette;->muted:I

    sput p1, Lmx/jorge/despierta/UiSheet;->MUTED:I

    iget p1, v0, Lmx/jorge/despierta/Palette;->surface:I

    sput p1, Lmx/jorge/despierta/UiSheet;->BG:I

    iget p1, v0, Lmx/jorge/despierta/Palette;->accent:I

    sput p1, Lmx/jorge/despierta/UiSheet;->ACCENT:I

    return-void
.end method

.method static synthetic lambda$action$6(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$0()Z
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method action(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;
    .locals 6

    .line 29
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_0

    new-instance p1, Lmx/jorge/despierta/Palette;

    iget-object v3, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {p1, v3}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p1, p1, Lmx/jorge/despierta/Palette;->onAccent:I

    goto :goto_0

    :cond_0
    sget p1, Lmx/jorge/despierta/UiSheet;->FG:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const v3, 0x338fe5ae

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v4, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    if-eqz p2, :cond_1

    sget p2, Lmx/jorge/despierta/UiSheet;->ACCENT:I

    goto :goto_1

    :cond_1
    new-instance p2, Lmx/jorge/despierta/Palette;

    iget-object v5, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {p2, v5}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p2, p2, Lmx/jorge/despierta/Palette;->card:I

    :goto_1
    const/16 v5, 0x1c

    invoke-static {v4, p2, v5}, Lmx/jorge/despierta/UiSheet;->fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-direct {p1, v3, p2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result p1

    iget-object v1, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p1, v2, p2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance p1, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method synthetic lambda$show$1$mx-jorge-despierta-UiSheet$Builder(Landroid/app/Dialog;ILandroid/view/View;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p3, p0, Lmx/jorge/despierta/UiSheet$Builder;->itemClick:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmx/jorge/despierta/UiSheet$Builder;->itemClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p3, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$show$2$mx-jorge-despierta-UiSheet$Builder(Landroid/app/Dialog;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->negative:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->negative:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$show$3$mx-jorge-despierta-UiSheet$Builder(Landroid/app/Dialog;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->validator:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->positive:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->positive:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$show$4$mx-jorge-despierta-UiSheet$Builder(Landroid/widget/LinearLayout;Landroid/widget/ScrollView;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x1

    invoke-direct {v1, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$show$5$mx-jorge-despierta-UiSheet$Builder()V
    .locals 3

    .line 27
    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 14
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->items:[Ljava/lang/String;

    iput-object p2, p0, Lmx/jorge/despierta/UiSheet$Builder;->itemClick:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method setMessage(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 13
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->negativeText:Ljava/lang/String;

    iput-object p2, p0, Lmx/jorge/despierta/UiSheet$Builder;->negative:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 16
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->cancel:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->positiveText:Ljava/lang/String;

    iput-object p2, p0, Lmx/jorge/despierta/UiSheet$Builder;->positive:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method setTitle(Ljava/lang/String;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 13
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method setView(Landroid/view/View;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 13
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method show()Landroid/app/Dialog;
    .locals 16

    .line 17
    move-object/from16 v0, p0

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v5, 0x18

    invoke-static {v4, v5}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-static {v6, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v8, v5}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v9, v5}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v4, v6, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    sget v6, Lmx/jorge/despierta/UiSheet;->BG:I

    const/16 v8, 0x1e

    invoke-static {v4, v6, v8}, Lmx/jorge/despierta/UiSheet;->fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/view/View;

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const v8, -0x8d7486

    const/4 v9, 0x3

    invoke-static {v6, v8, v9}, Lmx/jorge/despierta/UiSheet;->fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v10, 0x24

    invoke-static {v8, v10}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v8

    iget-object v10, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v8, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v10, 0x16

    invoke-static {v8, v10}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v4, v0, Lmx/jorge/despierta/UiSheet$Builder;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/16 v6, 0x12

    const/4 v8, 0x0

    if-nez v4, :cond_0

    iget-object v4, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    iget-object v10, v0, Lmx/jorge/despierta/UiSheet$Builder;->title:Ljava/lang/String;

    sget v11, Lmx/jorge/despierta/UiSheet;->FG:I

    invoke-static {v4, v10, v5, v11}, Lmx/jorge/despierta/UiSheet;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    const-string v10, "sans-serif-medium"

    invoke-static {v10, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v10, v6}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v4, v8, v8, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    :cond_0
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v10, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v11, v0, Lmx/jorge/despierta/UiSheet$Builder;->message:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x10

    if-nez v11, :cond_1

    iget-object v11, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->message:Ljava/lang/String;

    sget v2, Lmx/jorge/despierta/UiSheet;->MUTED:I

    invoke-static {v11, v5, v15, v2}, Lmx/jorge/despierta/UiSheet;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v5, v9}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v5, v15}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v8, v8, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 21
    :cond_1
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v2, v5}, Lmx/jorge/despierta/UiSheet;->input(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_2
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_3
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->items:[Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v8

    :goto_0
    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->items:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lmx/jorge/despierta/UiSheet$Builder;->items:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "  \u203a"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Lmx/jorge/despierta/UiSheet;->FG:I

    invoke-static {v5, v9, v15, v11}, Lmx/jorge/despierta/UiSheet;->text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v11, 0x38

    invoke-static {v9, v11}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v9, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v9, v15}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v9

    iget-object v11, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v11, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v11

    iget-object v14, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v14, v15}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v14

    iget-object v15, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v15, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v5, v9, v11, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    const v11, 0x338fe5ae

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iget-object v14, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    new-instance v15, Lmx/jorge/despierta/Palette;

    iget-object v7, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v15, v7}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v7, v15, Lmx/jorge/despierta/Palette;->card:I

    invoke-static {v14, v7, v6}, Lmx/jorge/despierta/UiSheet;->fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    const/4 v14, 0x0

    invoke-direct {v9, v11, v7, v14}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v11, 0x8

    invoke-static {v9, v11}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v1, v2}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda2;-><init>(Lmx/jorge/despierta/UiSheet$Builder;Landroid/app/Dialog;I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0xc

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x10

    goto/16 :goto_0

    .line 23
    :cond_4
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->negativeText:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->positiveText:Ljava/lang/String;

    if-eqz v2, :cond_9

    :cond_5
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v8, v5, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->negativeText:Ljava/lang/String;

    const/16 v6, 0x34

    if-eqz v5, :cond_6

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->negativeText:Ljava/lang/String;

    new-instance v7, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v1}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda3;-><init>(Lmx/jorge/despierta/UiSheet$Builder;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5, v8, v7}, Lmx/jorge/despierta/UiSheet$Builder;->action(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v5

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v9, v6}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->positiveText:Ljava/lang/String;

    if-eqz v5, :cond_8

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-static {v7, v6}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->negativeText:Ljava/lang/String;

    if-nez v6, :cond_7

    move v6, v8

    goto :goto_1

    :cond_7
    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    :goto_1
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->positiveText:Ljava/lang/String;

    new-instance v7, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0, v1}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;-><init>(Lmx/jorge/despierta/UiSheet$Builder;Landroid/app/Dialog;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v9, v7}, Lmx/jorge/despierta/UiSheet$Builder;->action(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    :cond_9
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->cancel:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->cancel:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_a
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v5}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v5, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v7, 0x18

    invoke-static {v6, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v7, 0x208

    invoke-static {v6, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5, v13}, Landroid/view/Window;->setLayout(II)V

    const/16 v5, 0x51

    invoke-virtual {v2, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->c:Landroid/content/Context;

    const/16 v5, 0x28

    invoke-static {v2, v5}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v5, 0xbe

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 26
    new-instance v2, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v3, v4}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda5;-><init>(Lmx/jorge/despierta/UiSheet$Builder;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 27
    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, v0, Lmx/jorge/despierta/UiSheet$Builder;->view:Landroid/view/View;

    new-instance v3, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda6;-><init>(Lmx/jorge/despierta/UiSheet$Builder;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-object v1
.end method

.method validate(Ljava/util/function/BooleanSupplier;)Lmx/jorge/despierta/UiSheet$Builder;
    .locals 0

    .line 16
    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder;->validator:Ljava/util/function/BooleanSupplier;

    return-object p0
.end method
