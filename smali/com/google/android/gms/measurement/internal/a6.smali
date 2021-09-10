.class final Lcom/google/android/gms/measurement/internal/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/g9;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a6;->a:Lcom/google/android/gms/measurement/internal/l6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a6;->a:Lcom/google/android/gms/measurement/internal/l6;

    const-string v0, "auto"

    const-string v1, "_err"

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/measurement/internal/l6;->Q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
