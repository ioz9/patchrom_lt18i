.class public Lcom/android/internal/app/LocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOCALE_DIVIDER:I = 0x0

.field private static final LOCALE_DIVIDER_LAYOUT:I = 0x1090066

.field public static final LOCALE_ITEM:I = 0x1

.field private static final LOCALE_ITEM_LAYOUT:I = 0x1090067

.field public static final NBR_OF_TYPES:I = 0x2

.field static final sCollator:Ljava/text/Collator;


# instance fields
.field enabled:Z

.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field resourceId:I

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(I)V

    .line 159
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->type:I

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const v0, 0x1090066

    iput v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->resourceId:I

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->enabled:Z

    .line 140
    iput-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 141
    iput-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_1
    const v0, 0x1090067

    iput v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->resourceId:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->enabled:Z

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(I)V

    .line 153
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 155
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 176
    sget-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
