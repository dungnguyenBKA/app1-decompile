.class public final enum Lpm$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpm$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lpm$a;

.field public static final enum c:Lpm$a;

.field public static final enum d:Lpm$a;

.field private static final synthetic e:[Lpm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lpm$a;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpm$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpm$a;->b:Lpm$a;

    new-instance v1, Lpm$a;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lpm$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpm$a;->c:Lpm$a;

    new-instance v3, Lpm$a;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lpm$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpm$a;->d:Lpm$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lpm$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lpm$a;->e:[Lpm$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpm$a;
    .locals 1

    .line 1
    const-class v0, Lpm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpm$a;

    return-object p0
.end method

.method public static values()[Lpm$a;
    .locals 1

    .line 1
    sget-object v0, Lpm$a;->e:[Lpm$a;

    invoke-virtual {v0}, [Lpm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpm$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
