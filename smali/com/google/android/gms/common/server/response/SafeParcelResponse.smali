.class public Lcom/google/android/gms/common/server/response/SafeParcelResponse;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/server/response/SafeParcelResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Landroid/os/Parcel;

.field private final d:I

.field private final e:Lcom/google/android/gms/common/server/response/zak;

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/server/response/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/common/server/response/zak;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->b:I

    const-string p1, "null reference"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->c:Landroid/os/Parcel;

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->d:I

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->f:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/server/response/zak;->o()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->f:Ljava/lang/String;

    .line 9
    :goto_0
    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->g:I

    return-void
.end method

.method private static g(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1a

    const-string v0, "Unknown type = "

    invoke-static {p2, v0, p1}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Method does not accept concrete type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    check-cast p2, Ljava/util/HashMap;

    invoke-static {p0, p2}, Landroidx/core/app/b;->R0(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void

    .line 4
    :pswitch_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, [B

    invoke-static {p2}, Lc2;->f([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 6
    :pswitch_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, [B

    invoke-static {p2}, Lc2;->e([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 7
    :pswitch_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 8
    :pswitch_5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final h(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 4
    iget v2, v2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:I

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x7b

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;)I

    move-result p2

    const/4 v1, 0x0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p2, :cond_26

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    .line 10
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    const-string v4, ","

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const-string v5, "\""

    .line 13
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k0()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 15
    iget v1, v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:I

    packed-switch v1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    iget p2, v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:I

    const/16 p3, 0x24

    const-string v0, "Unknown field out type = "

    .line 18
    invoke-static {p3, v0, p2}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method does not accept concrete type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :pswitch_1
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 24
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :cond_4
    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 27
    :pswitch_2
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->d(Landroid/os/Parcel;I)[B

    move-result-object v1

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 29
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    :cond_5
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 31
    :pswitch_3
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 33
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    :cond_6
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 35
    :pswitch_4
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Z

    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    :cond_7
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 40
    :pswitch_5
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 42
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    :cond_8
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 44
    :pswitch_6
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)D

    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 46
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 47
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    :cond_9
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 49
    :pswitch_7
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)F

    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 52
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    :cond_a
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 54
    :pswitch_8
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)J

    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 56
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 57
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :cond_b
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 59
    :pswitch_9
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 60
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 61
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    :cond_c
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 63
    :pswitch_a
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)I

    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    invoke-static {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 66
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    :cond_d
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 68
    :cond_e
    iget-boolean v1, v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:Z

    if-eqz v1, :cond_23

    const-string v1, "["

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:I

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_1

    .line 71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown field type out."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :pswitch_b
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_f

    goto :goto_5

    .line 74
    :cond_f
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 75
    new-array v7, v5, [Landroid/os/Parcel;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_11

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 79
    invoke-virtual {v11, p3, v10, v9}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 80
    aput-object v11, v7, v8

    add-int/2addr v10, v9

    .line 81
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    .line 82
    :cond_10
    aput-object v6, v7, v8

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_11
    add-int/2addr v2, v1

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v6, v7

    .line 84
    :goto_5
    array-length v1, v6

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_22

    if-lez v2, :cond_12

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_12
    aget-object v5, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l0()Ljava/util/Map;

    move-result-object v5

    aget-object v7, v6, v2

    invoke-direct {p0, p1, v5, v7}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->h(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 88
    :pswitch_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :pswitch_d
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_22

    if-eqz v3, :cond_13

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_13
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 93
    :pswitch_e
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_14

    goto :goto_8

    .line 95
    :cond_14
    invoke-virtual {p3}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v6

    add-int/2addr v2, v1

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    :goto_8
    array-length v1, v6

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_22

    if-eqz v2, :cond_15

    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_15
    aget-boolean v3, v6, v2

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 100
    :pswitch_f
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_16

    goto :goto_b

    .line 102
    :cond_16
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    new-array v6, v3, [Ljava/math/BigDecimal;

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_17

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    new-instance v8, Ljava/math/BigDecimal;

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v8, v9, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    add-int/2addr v2, v1

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    :goto_b
    invoke-static {p1, v6}, Landroidx/core/app/b;->Q0(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 109
    :pswitch_10
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_18

    goto :goto_c

    .line 111
    :cond_18
    invoke-virtual {p3}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v6

    add-int/2addr v2, v1

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    :goto_c
    array-length v1, v6

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    if-eqz v2, :cond_19

    .line 114
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_19
    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 116
    :pswitch_11
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_1a

    goto :goto_e

    .line 118
    :cond_1a
    invoke-virtual {p3}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    add-int/2addr v2, v1

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    :goto_e
    array-length v1, v6

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_22

    if-eqz v2, :cond_1b

    .line 121
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1b
    aget v3, v6, v2

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 123
    :pswitch_12
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_1c

    goto :goto_10

    .line 125
    :cond_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    add-int/2addr v2, v1

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    :goto_10
    array-length v1, v6

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_22

    if-eqz v2, :cond_1d

    .line 128
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1d
    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 130
    :pswitch_13
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_1e

    goto :goto_13

    .line 132
    :cond_1e
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    new-array v6, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1f

    .line 134
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1f
    add-int/2addr v2, v1

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    :goto_13
    invoke-static {p1, v6}, Landroidx/core/app/b;->Q0(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_16

    .line 137
    :pswitch_14
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)I

    move-result v1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_20

    goto :goto_14

    .line 139
    :cond_20
    invoke-virtual {p3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    add-int/2addr v2, v1

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 141
    :goto_14
    array-length v1, v6

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_22

    if-eqz v2, :cond_21

    .line 142
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_21
    aget v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_22
    :goto_16
    const-string v1, "]"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 145
    :cond_23
    iget v1, v3, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:I

    packed-switch v1, :pswitch_data_2

    .line 146
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown field type out"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :pswitch_15
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l0()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->h(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    goto/16 :goto_18

    .line 150
    :pswitch_16
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/Set;->size()I

    const-string v3, "{"

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v3, :cond_24

    .line 155
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_24
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 157
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_17

    :cond_25
    const-string v1, "}"

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 160
    :pswitch_17
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->d(Landroid/os/Parcel;I)[B

    move-result-object v1

    .line 161
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lc2;->f([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 163
    :pswitch_18
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->d(Landroid/os/Parcel;I)[B

    move-result-object v1

    .line 164
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lc2;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 165
    :pswitch_19
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/gms/common/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 167
    :pswitch_1a
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Z

    move-result v1

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 169
    :pswitch_1b
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 171
    :pswitch_1c
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)D

    move-result-wide v1

    .line 172
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 173
    :pswitch_1d
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)F

    move-result v1

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 175
    :pswitch_1e
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)J

    move-result-wide v1

    .line 176
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 177
    :pswitch_1f
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 179
    :pswitch_20
    invoke-static {p3, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)I

    move-result v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_18
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 181
    :cond_26
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p2, :cond_27

    const/16 p2, 0x7d

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 183
    :cond_27
    new-instance p1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    const/16 v0, 0x25

    const-string v1, "Overread allowed size end="

    invoke-static {v0, v1, p2}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    goto :goto_1a

    :goto_19
    throw p1

    :goto_1a
    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method private final i(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d:Z

    if-eqz v0, :cond_2

    .line 2
    check-cast p3, Ljava/util/ArrayList;

    const-string v0, "["

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget v2, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    .line 7
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->g(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "]"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 9
    :cond_2
    iget p2, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->g(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    return-void
.end method

.method private final k()Landroid/os/Parcel;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->g:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->c:Landroid/os/Parcel;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->h:I

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->c:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->h:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->g:I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->c:Landroid/os/Parcel;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/zak;->i0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Converting to JSON does not require this method."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Converting to JSON does not require this method."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    const-string v1, "Cannot convert to JSON on client side."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->k()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/server/response/zak;->i0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->h(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->b:I

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->k()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 5
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->d:I

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->d:I

    const/16 v0, 0x22

    const-string v1, "Invalid creation type: "

    invoke-static {v0, v1, p2}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->e:Lcom/google/android/gms/common/server/response/zak;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    .line 10
    invoke-static {p1, v2, v1, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
