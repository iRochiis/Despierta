.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-boolean p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-boolean v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda34;->f$1:Z

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/MainActivity;->lambda$editor$15$mx-jorge-despierta-MainActivity(Z)V

    return-void
.end method
