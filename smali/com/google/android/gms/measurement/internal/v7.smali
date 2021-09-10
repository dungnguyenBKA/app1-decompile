.class final Lcom/google/android/gms/measurement/internal/v7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v7;->b:Lcom/google/android/gms/measurement/internal/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v7;->b:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/v7;->b:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/z7;->w(Lcom/google/android/gms/measurement/internal/z7;Landroid/content/ComponentName;)V

    return-void
.end method
