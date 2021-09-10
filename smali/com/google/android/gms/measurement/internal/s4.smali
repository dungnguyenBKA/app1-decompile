.class final Lcom/google/android/gms/measurement/internal/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s4;->c:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s4;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s4;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->o()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s4;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s4;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b9;->g0(Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
