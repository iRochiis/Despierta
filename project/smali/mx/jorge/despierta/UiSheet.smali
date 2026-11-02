.class final Lmx/jorge/despierta/UiSheet;
.super Ljava/lang/Object;
.source "UiSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmx/jorge/despierta/UiSheet$Builder;
    }
.end annotation


# static fields
.field static ACCENT:I

.field static BG:I

.field static FG:I

.field static MUTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const v0, -0x180a15

    sput v0, Lmx/jorge/despierta/UiSheet;->FG:I

    const v0, -0x564250

    sput v0, Lmx/jorge/despierta/UiSheet;->MUTED:I

    const v0, -0xe3cfda

    sput v0, Lmx/jorge/despierta/UiSheet;->BG:I

    const v0, -0x46106a

    sput v0, Lmx/jorge/despierta/UiSheet;->ACCENT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 0

    .line 6
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 7
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p0, p2}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method static input(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 5

    .line 9
    new-instance v0, Lmx/jorge/despierta/Palette;

    invoke-direct {v0, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lmx/jorge/despierta/Palette;->fg:I

    sput v1, Lmx/jorge/despierta/UiSheet;->FG:I

    iget v1, v0, Lmx/jorge/despierta/Palette;->muted:I

    sput v1, Lmx/jorge/despierta/UiSheet;->MUTED:I

    iget v1, v0, Lmx/jorge/despierta/Palette;->surface:I

    sput v1, Lmx/jorge/despierta/UiSheet;->BG:I

    iget v0, v0, Lmx/jorge/despierta/Palette;->accent:I

    sput v0, Lmx/jorge/despierta/UiSheet;->ACCENT:I

    sget v0, Lmx/jorge/despierta/UiSheet;->FG:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    sget v0, Lmx/jorge/despierta/UiSheet;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v0, 0x12

    invoke-static {p0, v0}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v2}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    new-instance v1, Lmx/jorge/despierta/Palette;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget v1, v1, Lmx/jorge/despierta/Palette;->bg:I

    invoke-static {p0, v1, v0}, Lmx/jorge/despierta/UiSheet;->fill(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmx/jorge/despierta/UiSheet;->dp(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Lmx/jorge/despierta/Palette;

    invoke-direct {v3, p0}, Lmx/jorge/despierta/Palette;-><init>(Landroid/content/Context;)V

    iget p0, v3, Lmx/jorge/despierta/Palette;->muted:I

    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 8
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, p2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p0, "tnum"

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    const-string p0, "sans-serif"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method
