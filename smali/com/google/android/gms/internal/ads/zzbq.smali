.class public Lcom/google/android/gms/internal/ads/zzbq;
.super Lcom/google/android/gms/internal/ads/zzepl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static zzdc:Lcom/google/android/gms/internal/ads/zzept;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzept;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzept;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbq;->zzdc:Lcom/google/android/gms/internal/ads/zzept;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/internal/ads/zzbn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzepl;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzepn;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Lcom/google/android/gms/internal/ads/zzepn;JLcom/google/android/gms/internal/ads/zzbn;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzepn;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepl;->zzjbd:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lic;->m(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "model("

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
