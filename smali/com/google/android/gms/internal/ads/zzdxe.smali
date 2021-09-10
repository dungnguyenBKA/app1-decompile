.class final Lcom/google/android/gms/internal/ads/zzdxe;
.super Lcom/google/android/gms/internal/ads/zzdxd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdxd<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxd;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxd;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdxe;->offset:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxe;->length:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzt(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxe;->zzv(II)Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object p1

    return-object p1
.end method

.method final zzazh()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazh()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzazi()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzazj()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazi()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzazl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzv(II)Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzf(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdxd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxd;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxd;

    return-object p1
.end method
