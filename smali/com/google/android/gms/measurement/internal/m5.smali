.class final synthetic Lcom/google/android/gms/measurement/internal/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/l6;

.field private final c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/l6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m5;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l6;->G(Landroid/os/Bundle;)V

    return-void
.end method
