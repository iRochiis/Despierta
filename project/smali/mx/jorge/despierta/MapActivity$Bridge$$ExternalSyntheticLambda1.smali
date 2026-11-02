.class public final synthetic Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MapActivity$Bridge;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MapActivity$Bridge;DDLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$0:Lmx/jorge/despierta/MapActivity$Bridge;

    iput-wide p2, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$1:D

    iput-wide p4, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$2:D

    iput-object p6, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput p7, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$0:Lmx/jorge/despierta/MapActivity$Bridge;

    iget-wide v1, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$1:D

    iget-wide v3, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$2:D

    iget-object v5, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget v6, p0, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;->f$4:I

    invoke-virtual/range {v0 .. v6}, Lmx/jorge/despierta/MapActivity$Bridge;->lambda$choose$0$mx-jorge-despierta-MapActivity$Bridge(DDLjava/lang/String;I)V

    return-void
.end method
