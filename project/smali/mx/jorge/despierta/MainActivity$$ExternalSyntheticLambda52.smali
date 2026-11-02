.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/widget/ScrollView;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;ZILandroid/view/Window;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$2:Landroid/widget/ScrollView;

    iput-boolean p4, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$3:Z

    iput p5, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$4:I

    iput-object p6, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$5:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$2:Landroid/widget/ScrollView;

    iget-boolean v3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$3:Z

    iget v4, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$4:I

    iget-object v5, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda52;->f$5:Landroid/view/Window;

    invoke-virtual/range {v0 .. v5}, Lmx/jorge/despierta/MainActivity;->lambda$root$3$mx-jorge-despierta-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/ScrollView;ZILandroid/view/Window;)V

    return-void
.end method
