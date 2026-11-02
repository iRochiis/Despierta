.class public final synthetic Lmx/jorge/despierta/PillSwitch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/PillSwitch;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/PillSwitch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/PillSwitch$$ExternalSyntheticLambda0;->f$0:Lmx/jorge/despierta/PillSwitch;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/PillSwitch$$ExternalSyntheticLambda0;->f$0:Lmx/jorge/despierta/PillSwitch;

    invoke-virtual {v0, p1}, Lmx/jorge/despierta/PillSwitch;->lambda$setChecked$0$mx-jorge-despierta-PillSwitch(Landroid/animation/ValueAnimator;)V

    return-void
.end method
