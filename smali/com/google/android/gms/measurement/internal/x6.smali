.class final Lcom/google/android/gms/measurement/internal/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzs;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x6;->b:Lcom/google/android/gms/internal/measurement/zzs;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/x6;->c:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x6;->b:Lcom/google/android/gms/internal/measurement/zzs;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x6;->c:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z7;->t(Lcom/google/android/gms/internal/measurement/zzs;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
