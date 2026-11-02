.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda20;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lmx/jorge/despierta/MainActivity;->lambda$customPalette$53$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method
