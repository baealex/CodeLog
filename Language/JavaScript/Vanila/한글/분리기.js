function 글자_분리기(글자) {
    const 초성 = [
        'ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ',
        'ㅂ', 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ',
        'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'
    ];

    const 중성 = [
        'ㅏ', 'ㅐ', 'ㅑ', 'ㅒ', 'ㅓ', 'ㅔ', 'ㅕ',
        'ㅖ', 'ㅗ', 'ㅘ', 'ㅙ', 'ㅚ', 'ㅛ', 'ㅜ',
        'ㅝ', 'ㅞ', 'ㅟ', 'ㅠ', 'ㅡ', 'ㅢ', 'ㅣ'
    ];

    const 종성 = [
        '', 'ㄱ', 'ㄲ', 'ㄳ', 'ㄴ', 'ㄵ', 'ㄶ',
        'ㄷ', 'ㄹ', 'ㄺ', 'ㄻ', 'ㄼ', 'ㄽ', 'ㄾ',
        'ㄿ', 'ㅀ', 'ㅁ', 'ㅂ', 'ㅄ', 'ㅅ', 'ㅆ',
        'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'
    ];

    const 유니코드_한글_시작점 = 44032;
    const 글자의_유니코드 = 글자.charCodeAt(0);

    if (글자의_유니코드 < 유니코드_한글_시작점) {
        return '조합된 한글이 아닙니다.';
    }

    const 상대_크기의_코드 = 글자의_유니코드 - 유니코드_한글_시작점;

    const 초성_인덱스 = parseInt(상대_크기의_코드 / 588);
    const 중성_인덱스 = parseInt((상대_크기의_코드 - (초성_인덱스 * 588)) / 28);
    const 종성_인덱스 = parseInt(상대_크기의_코드 % 28);

    return {
        초성: 초성[초성_인덱스],
        중성: 중성[중성_인덱스],
        종성: 종성[종성_인덱스]
    };
}

console.log(글자_분리기('진'));