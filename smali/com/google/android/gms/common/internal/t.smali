.class final Lcom/google/android/gms/common/internal/t;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# instance fields
.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Landroidx/fragment/app/Fragment;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/t;->b:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/t;->c:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/t;->d:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/t;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/t;->c:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/t;->d:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->k1(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
